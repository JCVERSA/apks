package defpackage;

import com.yandex.div.json.ParsingException;
import com.yandex.div.json.ParsingExceptionReason;

public abstract class bc5 {
    public static final void a(ParsingException parsingException) {
        y45.j(parsingException, "e");
        if (parsingException.getReason() != ParsingExceptionReason.MISSING_VALUE) {
            throw parsingException;
        }
    }
}
