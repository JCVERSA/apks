package org.apache.commons.text.similarity;

public class JaroWinklerDistance implements EditDistance<Double> {

    @Deprecated
    public static final int INDEX_NOT_FOUND = -1;
    private final JaroWinklerSimilarity similarity = new JaroWinklerSimilarity();

    @Deprecated
    public static int[] matches(CharSequence charSequence, CharSequence charSequence2) {
        return JaroWinklerSimilarity.matches(charSequence, charSequence2);
    }

    @Override
    public Double apply(CharSequence charSequence, CharSequence charSequence2) {
        if (charSequence == null || charSequence2 == null) {
            throw new IllegalArgumentException("CharSequences must not be null");
        }
        return Double.valueOf(1.0d - this.similarity.apply(charSequence, charSequence2).doubleValue());
    }
}
