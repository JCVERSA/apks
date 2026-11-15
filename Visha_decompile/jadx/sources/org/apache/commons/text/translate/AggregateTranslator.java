package org.apache.commons.text.translate;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.stream.Stream;
import org.apache.commons.text.translate.CharSequenceTranslator;

public class AggregateTranslator extends CharSequenceTranslator {
    private final List<CharSequenceTranslator> translators;

    public AggregateTranslator(CharSequenceTranslator... charSequenceTranslatorArr) {
        final ArrayList arrayList = new ArrayList();
        this.translators = arrayList;
        if (charSequenceTranslatorArr != null) {
            Stream.of((Object[]) charSequenceTranslatorArr).filter(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return Objects.nonNull((CharSequenceTranslator) obj);
                }
            }).forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    arrayList.add((CharSequenceTranslator) obj);
                }
            });
        }
    }

    @Override
    public int translate(CharSequence charSequence, int i, Writer writer) throws IOException {
        Iterator<CharSequenceTranslator> it = this.translators.iterator();
        while (it.hasNext()) {
            int iTranslate = it.next().translate(charSequence, i, writer);
            if (iTranslate != 0) {
                return iTranslate;
            }
        }
        return 0;
    }
}
