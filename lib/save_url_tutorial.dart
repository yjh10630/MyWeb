import 'package:flutter/material.dart';

class SaveUrlTutorial extends StatelessWidget {
  const SaveUrlTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100),
            sectionText(
              title: '🔗 링크 저장, 쉽고 간편하게',
              content:
              '이 앱은 링크를 쉽고 빠르게 저장할 수 있는 링크 관리 앱입니다.\n\n화면 아래 플로팅 버튼의 + 를 눌러 링크를 추가할 수 있어요.\n또한 클립보드에 복사된 링크가 있을 경우, 앱을 실행하면 저장하겠냐는 메시지가 자동으로 떠요!',
            ),
            imagePlaceholders(
              [Image.asset('images/mainscreen.png', width: 300,), Image.asset('images/mainscreen2.png', width: 300,)]
            ),

            sectionText(
              title: '📄 링크 요약 정보 자동 로딩',
              content:
              '링크 입력 후, 해당 웹사이트의 요약 정보(제목, 설명, 이미지 등)가 자동으로 로딩됩니다.\n\n로딩 시간이 길 경우 X 버튼을 눌러, 요약 정보 없이 저장도 가능해요.',
            ),
            imagePlaceholders(
                [Image.asset('images/savescreen2.png', width: 300,), Image.asset('images/savescreen.png', width: 300,)]
            ),

            sectionText(
              title: '🔖 북마크로 중요 링크 표시',
              content:
              '링크를 저장할 때 북마크를 설정하여 나중에 중요 링크를 한눈에 확인할 수 있어요.',
            ),
            imagePlaceholder(Image.asset('images/bookmark.png', width: 300,)),

            sectionText(
              title: '📁 카테고리로 정리하기',
              content:
              '링크를 나만의 폴더처럼 분류할 수 있도록 카테고리를 설정할 수 있어요.\n자주 쓰는 주제별로 정리해보세요!',
            ),
            imagePlaceholders(
                [Image.asset('images/category.png', width: 300,), Image.asset('images/categoryeditscreen.png', width: 300,)]
            ),

            sectionText(
              title: '🏷️ 태그로 빠르게 검색',
              content:
              '특정 키워드를 태그로 등록하면 나중에 검색할 때 훨씬 편리하게 찾을 수 있어요.\n중요한 정보에 태그를 붙여 보관하세요!',
            ),
            imagePlaceholders(
                [Image.asset('images/tag.png', width: 300,), Image.asset('images/filter.png', width: 300,)]
            ),

            sectionText(
              title: '📝 저장 후 수정/삭제도 가능해요',
              content:
              '저장한 링크는 언제든지 수정하거나 삭제할 수 있어요.\n링크를 길게 눌러 관리해보세요.',
            ),
            imagePlaceholder(Image.asset('images/edit.png', width: 300,)),

            sectionText(
              title: '🗑️ 삭제는 휴지통으로 먼저 이동!',
              content:
              '링크를 삭제하면 바로 사라지는 게 아니라, 먼저 휴지통으로 이동됩니다.\n\n설정에서 휴지통 기능을 OFF 하면, 바로 삭제할 수도 있어요.',
            ),
            imagePlaceholders(
                [Image.asset('images/trashscreen.png', width: 300,), Image.asset('images/trashswitch.png', width: 300,)]
            ),

            sectionText(
              title: '🙋 문의는 설정 화면에서!',
              content:
              '앱 사용 중 문의가 필요하다면, 설정 화면에서 "앱 오류 신고" 버튼을 눌러주세요.\n\nSaveUrl을 이용해 주셔서 감사합니다!',
            ),
            imagePlaceholder(Image.asset('images/setting.png', width: 300,)),

            const SizedBox(height: 20),
            const Center(child: Text('🧡 감사합니다 🧡', style: TextStyle(fontSize: 16))),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  Widget sectionText({required String title, required String content}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text(content, style: const TextStyle(fontSize: 15)),
        ],
      ),
    );
  }

  Widget imagePlaceholders([List<Widget>? children]) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      width: double.infinity,
      color: Colors.grey.shade200,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8.0),
      child: children != null
          ? SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: children
              .map((child) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: child,
          ))
              .toList(),
        ),
      )
          : const Text(
        '🔽 여기 이미지 들어갈 자리 🔽',
        style: TextStyle(fontSize: 14, color: Colors.black45),
      ),
    );
  }

  Widget imagePlaceholder([Widget? child]) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      width: double.infinity,
      color: Colors.grey.shade200,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8.0),
      child: child ?? const Text(
        '🔽 여기 이미지 들어갈 자리 🔽',
        style: TextStyle(fontSize: 14, color: Colors.black45),
      ),
    );
  }
}
