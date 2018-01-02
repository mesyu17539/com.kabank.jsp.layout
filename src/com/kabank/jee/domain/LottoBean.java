package com.kabank.jee.domain;

public class LottoBean {
	private String lottoNum;

	public String getLottoNum() {
		return lottoNum;
	}

	public void setLottoNum(String lottoNum) {
		this.lottoNum = lottoNum;
	}

	@Override
	public String toString() {
		return "당신의 로또타임 [번호 : " + lottoNum + "]";
	}
}
