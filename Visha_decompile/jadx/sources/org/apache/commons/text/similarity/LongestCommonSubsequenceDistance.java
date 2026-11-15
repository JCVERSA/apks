package org.apache.commons.text.similarity;

public class LongestCommonSubsequenceDistance implements EditDistance<Integer> {
    private final LongestCommonSubsequence longestCommonSubsequence = new LongestCommonSubsequence();

    @Override
    public Integer apply(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            throw new IllegalArgumentException("Inputs must not be null");
        }
        return Integer.valueOf((charSequence.length() + charSequence2.length()) - (this.longestCommonSubsequence.apply(charSequence, charSequence2).intValue() * 2));
    }
}
