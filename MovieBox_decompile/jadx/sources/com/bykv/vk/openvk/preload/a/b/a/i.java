package com.bykv.vk.openvk.preload.a.b.a;

import com.bykv.vk.openvk.preload.a.p;
import com.bykv.vk.openvk.preload.a.r;
import com.bykv.vk.openvk.preload.a.s;
import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public final class i extends r<Date> {

    public static final s f19740a = new s() {
        @Override
        public final <T> r<T> a(com.bykv.vk.openvk.preload.a.d dVar, com.bykv.vk.openvk.preload.a.c.a<T> aVar) {
            if (aVar.a() == Date.class) {
                return new i();
            }
            return null;
        }
    };

    private final DateFormat f19741b = new SimpleDateFormat("MMM d, yyyy");

    @Override
    public synchronized Date a(com.bykv.vk.openvk.preload.a.d.a aVar) throws IOException {
        if (aVar.f() == com.bykv.vk.openvk.preload.a.d.b.NULL) {
            aVar.j();
            return null;
        }
        try {
            return new Date(this.f19741b.parse(aVar.h()).getTime());
        } catch (ParseException e10) {
            throw new p(e10);
        }
    }

    @Override
    public synchronized void a(com.bykv.vk.openvk.preload.a.d.c cVar, Date date) throws IOException {
        cVar.b(date == null ? null : this.f19741b.format((java.util.Date) date));
    }
}
