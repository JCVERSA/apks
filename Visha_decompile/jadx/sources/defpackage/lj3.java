package defpackage;

import com.yandex.div.json.ParsingException;
import com.yandex.div.json.ParsingExceptionReason;

public abstract class lj3 {
    public static final boolean b(ParsingException parsingException) {
        return parsingException.getReason() == ParsingExceptionReason.MISSING_VARIABLE || parsingException.getReason() == ParsingExceptionReason.INVALID_VALUE || parsingException.getReason() == ParsingExceptionReason.TYPE_MISMATCH;
    }
}
