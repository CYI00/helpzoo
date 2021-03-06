package com.project.helpzoo.model.service;

import java.util.List;

import com.project.helpzoo.model.vo.Mailing;

public interface MailingService {

	/** 메일링 서비스 등록 여부 확인
	 * @param memberNo
	 * @return selMailing
	 */
	public abstract Mailing selectMailing(int memberNo);

	/** 메일링 서비스 구독하기
	 * @param mailing
	 * @return result
	 */
	public abstract int subscribe(Mailing mailing);

	/** 메일링 서비스 구독 취소
	 * @param mailing
	 * @return result
	 */
	public abstract int subscribeCancel(Mailing mailing);

	/** 구독한 계정 메일 주소 목록
	 * @return toSendMail
	 */
	public abstract List<String> toSendMail();

}
