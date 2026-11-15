package com.google.thirdparty.publicsuffix;

public enum PublicSuffixType {
    PRIVATE(':', ','),
    REGISTRY('!', '?');

    private final char innerNodeCode;
    private final char leafNodeCode;

    PublicSuffixType(char c10, char c11) {
        this.innerNodeCode = c10;
        this.leafNodeCode = c11;
    }

    static PublicSuffixType fromCode(char c10) {
        for (PublicSuffixType publicSuffixType : values()) {
            if (publicSuffixType.getInnerNodeCode() == c10 || publicSuffixType.getLeafNodeCode() == c10) {
                return publicSuffixType;
            }
        }
        throw new IllegalArgumentException("No enum corresponding to given code: " + c10);
    }

    char getInnerNodeCode() {
        return this.innerNodeCode;
    }

    char getLeafNodeCode() {
        return this.leafNodeCode;
    }
}
