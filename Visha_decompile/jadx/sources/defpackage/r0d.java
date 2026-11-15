package defpackage;

import java.util.logging.Level;
import java.util.logging.Logger;

public class r0d implements tq5 {

    public static class a extends pq5 {
        public final Logger i;

        public a(Logger logger) {
            this.i = logger;
        }

        @Override
        public void A(String str, Throwable th) {
            this.i.log(Level.WARNING, str, th);
        }

        @Override
        public void d(String str) {
            this.i.log(Level.FINE, str);
        }

        @Override
        public void e(String str, Throwable th) {
            this.i.log(Level.FINE, str, th);
        }

        @Override
        public void g(String str) {
            this.i.log(Level.SEVERE, str);
        }

        @Override
        public void h(String str, Throwable th) {
            this.i.log(Level.SEVERE, str, th);
        }

        @Override
        public void n(String str) {
            this.i.log(Level.INFO, str);
        }

        @Override
        public void o(String str, Throwable th) {
            this.i.log(Level.INFO, str, th);
        }

        @Override
        public boolean q() {
            return this.i.isLoggable(Level.FINE);
        }

        @Override
        public boolean r() {
            return this.i.isLoggable(Level.SEVERE);
        }

        @Override
        public boolean s() {
            return this.i.isLoggable(Level.INFO);
        }

        @Override
        public boolean t() {
            return this.i.isLoggable(Level.WARNING);
        }

        @Override
        public void z(String str) {
            this.i.log(Level.WARNING, str);
        }
    }

    @Override
    public pq5 a(String str) {
        return new a(Logger.getLogger(str));
    }
}
