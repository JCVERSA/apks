package org.schabi.newpipe.extractor;

import defpackage.c23;
import defpackage.ce9;
import java.util.function.Predicate;
import java.util.function.Supplier;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.a;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.extractor.localization.Localization;

public abstract class a {
    public static c23 a;
    public static Localization b;
    public static ContentCountry c;

    public static c23 c() {
        return a;
    }

    public static ContentCountry d() {
        ContentCountry contentCountry = c;
        return contentCountry == null ? ContentCountry.DEFAULT : contentCountry;
    }

    public static Localization e() {
        Localization localization = b;
        return localization == null ? Localization.DEFAULT : localization;
    }

    public static StreamingService f(final int i) {
        return (StreamingService) ce9.a().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return a.i(i, (StreamingService) obj);
            }
        }).findFirst().orElseThrow(new Supplier() {
            @Override
            public final Object get() {
                return a.j(i);
            }
        });
    }

    public static StreamingService g(String str) throws ExtractionException {
        for (StreamingService streamingService : ce9.a()) {
            if (streamingService.k(str) != StreamingService.LinkType.NONE) {
                return streamingService;
            }
        }
        throw new ExtractionException("No service can handle the url = \"" + str + "\"");
    }

    public static void h(c23 c23Var, Localization localization, ContentCountry contentCountry) {
        a = c23Var;
        b = localization;
        c = contentCountry;
    }

    public static boolean i(int i, StreamingService streamingService) {
        return streamingService.q() == i;
    }

    public static ExtractionException j(int i) {
        return new ExtractionException("There's no service with the id = \"" + i + "\"");
    }
}
