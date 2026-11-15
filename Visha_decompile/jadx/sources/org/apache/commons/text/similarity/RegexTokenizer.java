package org.apache.commons.text.similarity;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.Validate;

final class RegexTokenizer implements Tokenizer<CharSequence> {
    private static final Pattern PATTERN = Pattern.compile("(\\w)+");

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public CharSequence[] tokenize(CharSequence charSequence) {
        Validate.isTrue(StringUtils.isNotBlank(charSequence), "Invalid text", new Object[0]);
        Matcher matcher = PATTERN.matcher(charSequence);
        ArrayList arrayList = new ArrayList();
        while (matcher.find()) {
            arrayList.add(matcher.group(0));
        }
        return (CharSequence[]) arrayList.toArray(ArrayUtils.EMPTY_STRING_ARRAY);
    }
}
