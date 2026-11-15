package cn.com.custommma.mobile.tracking.viewability.origin.sniffer;

public enum AbilityVideoProgress {
    TRACK1_4("25"),
    TRACK2_4("50"),
    TRACK3_4("75"),
    TRACK4_4("100");

    private String value;

    AbilityVideoProgress(String str) {
        this.value = str;
    }

    public String value() {
        return this.value;
    }
}
