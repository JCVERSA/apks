package org.apache.commons.text.similarity;

public interface EditDistance<R> extends SimilarityScore<R> {
    @Override
    R apply(CharSequence charSequence, CharSequence charSequence2);
}
