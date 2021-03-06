//
//  ViewController.swift
//  IBTest
//
//  Created by 이두산 on 2022/06/08.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    /* [22.06.08] 스토리보드의 객체를 클래스와 연결하기
     @IBOutlet / @IBAction 의 앞에 생기는 O는
     보조에디터를 추가할 수 있다.
     
     프로퍼티나 메소드가 인터페이스 빌더의 객체와 연결되어 있다는 것을 시각적으로 알 수 있다.
     */
    @IBOutlet var UniTitle01: UILabel!
    
    /* [22.06.08] 인스펙터 탭을 이용해 클래스 연결하기 
     인스펙터 탭의 맨 마지막에 있는 커넥션 인스펙터 탭은 스토리보드 객체와 클래스 사이의 연결 상태를 보여주는 역할을 할 뿐만아니라 연결을 추가하거나, 연결을 끓는 역할도 함께합니다.
     
     연결 방법
     1. 연결할 객체를 선택한다.
     2. Show the Connections inspector로 이동한다.
     3. Referencing Outlets의 [New Referencing Outlet] 옆의 O를 드레그한다.
     4. 프로퍼티를 작성하면 연결이 된다.
     */
    
    @IBAction func clickBtn01(_ sender: Any) {
        self.UniTitle01.text = "Button01 Clicked"
    }
    
    /* ---------------------------- */
    
    /* [22.06.08] 커넥션 인스펙터 탭을 사용하여 객체 연결하기
     연결방법
     1. new Referencing Outlet의 원모양 아이콘 위에서 마우스 왼쪽 버튼을 클릭한 채로 보조 에디터 쪽으로 드래그합니다.
     2. 드레그를 놓았을 때 팝업되는 연결 정보창에서도 [Connection] 부분이 Outlet으로 고정된 채 비활성화 되어 있습니다.
     
     */
    // 인스펙터를 이용해 연결한 uniTitle02
    @IBOutlet var uniTitle02: UILabel!
    
    // 인스펙터를 이용해 연결한 clickBtn02
    @IBAction func clickBtn02(_ sender: Any) {
        self.uniTitle02.text = "Button02 Clicked"
    }
    
    /* ---------------------------- */
    
    /* [22.06.13] 보조 에디터에서 스토리보드의 객체로 연결하기
     아웃렛 변수의 초기값은 앱이 실행될 때 코코아 터치 프레임워크에 의해 주입되기 때문에 우리가 임의로 지정할 수 없습니다.
     즉, 아웃렛 변수로 사용될 것이므로 초기값이 없는 상태로 정의해야 한다.

     여기서 주의할 점이 하나 있는데, 이는 uiTitle03 변수에 타입 어노테이션을 작성할 때 옵셔널 연산자인 !를 추가하는 부분이다.
     이는 묵시적 옵셔널 해제를 뜻한다.
     */
    @IBOutlet var uniTitle03: UILabel!
    
    
    /* [22.06.13]
     일반적으로 클래스에서 초기화되지 않은 프로퍼티는 모두 옵셔널이어야 하지만, 옵셔널로 선언하면 이후로 옵셔널 체인을 이용하면 구문을 작성해야 할 뿐만아니라 옵셔널 테크가 필요한 부분도 많으므로 불편하다.
     
     대신 옵셔널 해제 연산자를 붙여 정의해 두면 선언할 때에는 옵셔널 타입이지만 일반 타입처럼 사용할 수 있다는 장점이 있다.
     
     이렇게 작성한 코드 앞에는 [인터페이스 빌더] / [인스펙터] 를 이용한 것과는 달리 원모양 아이콘이 나타난다.
     */
    @IBAction func clickBtn03(_ sender: Any) {
        self.uniTitle03.text = "Button03 Clicked"
    }
    
    /* [22.06.13] 레이블 객체 위로 가이드 라인이 연결되고 레이블이 활성화 되었을 때 마우스 드래그를 놓으면, 객체와 아울렛 변수 사이가 연결됩니다.
     지금까지와 다른 점은 연결 정보창의 발현 유무뿐이다.
     
     앞서 실습한 [인터페이스 빌더] / [인스펙터]를 연결할 때에는 필요한 속성을 입력받기 위해 연결 정보창이 나타났지만, 이번에는 이런 연결 정보창 없이 그대로 양쪽이 연결된다.
     
     왜 이게 연결이 되는걸까? -> 이는 아울렛 변수가 이미 클래스에 정의되어 있기 때문이다
     기본적으로 아울렛 변수를 생성하기 위해서는 변수명을 입력받아야 하지만, 이미 클래스에 정의되어 있으므로 입력받을 필요가 없어진거다.
     그래서 연결 정보창을 통한 정보 입력이 필요하지 않다.
    */
    
    /* [22.06.15] 커넥션 인스펙터 탭을 사용하여 객체 연결하기
     보조 에디터에서 한 것처럼 연결 아이콘이 옆에 출력되지만 이를 사용하지 않는 방법이다.
     커넥션 인스펙터 탭에서 이 탭은 현재 연결되어 있는 정보뿐만 아니라, @IBOutlet @IBAction 어노에티션이 붙은 항목중에서 아직 연결되지 않은 항목들도 표시해줍니다.
     Connection inspector tab 에서는 이에 연결된 ViewController 클래스 내부에 정의된 @IBOutlet @IBAction 메소드들이 보인다.
     
     이를 통해 다른 항목과 달리 어노테이션을 사용하는 객체들의 상태를 확인할 수 있다.
     
     */
    @IBOutlet var uniTitle04: UILabel!
    
    @IBAction func clickBtn04(_ sender: Any) {
        self.uniTitle04.text = "Button04 Clicked"
    }
    
    /* [22.06.16] 문서 개요창을 활용하여 객체 연결하기
     xcode 에서는 인터페이스 빌더의 서브 기능으로 문서 개요창(Document Outline)을 제공하는데, 이는 스토리보드에 구현된 모든 객체들이 구조화된 목록으로 표시되므로 전체적인 구조를 손쉽게 파악할 수 있을 뿐만 아니라, 이들 목록을 이용해서 아울렛 변수나 액션 메소드를 연결할 수도 있다.
     
     문서 개요창은 뷰 컨트롤러와 UI 객체들의 관계를 구조적으로 표시해줌으로써 스토리보드 방식의 화면 설계가 갖는 단점을 보완해준다.
     
     문서 개요창에서 하나의 객체를 클릭하면 스토리보드 사이에 맺어진 연결 관계를 볼 수 있는데.
     이는 문서 개요창의 항목들은 스토리보드의 객체들을 관계 중심으로 재배치해 놓은 것으로, 일종의 레플리카라고 할 수 있다.
     
     이 때문에 스토리보드의 객체를 드래그하거나 연결해야 할 때 문서 개요창에서 대응하는 객체를 찾아 대신 드래그하거나 연결해도 같은 결과를 얻을 수 있다.
     */
    @IBOutlet var uniTitle05: UILabel!
    
    @IBAction func clickBtn05(_ sender: Any) {
        self.uniTitle05.text = "Button05 Clicked"
    }
    
}

