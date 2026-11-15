package com.facebook.ads.redexgen.core;

public class C1268Tq extends AbstractC1707eW {
    public static String[] A01 = {"hExgTQdw1kv5p4SGmSicbF82985LCpum", "OSM8v", "iL8QA6bjiVhv7y8TzYON6pF30CxXc7Eu", "LpLF7ms2E8gIcrW5L7jBJg3HcpVfC8m9", "nyKyIbOxza05szDl5mK4c2SMRynlWefb", "BGGrZQbo3jXV4aVW1zlLDKwbTLCVQORY", "wI7v5HbNskmPwObzpny5FWr5GhKQDnFZ", "gz5SetHbJQqiE2gsx67H3auEs"};
    public final TD A00;

    public C1268Tq(TD td) {
        this.A00 = td;
    }

    @Override
    public final void A00() {
        if (this.A00.A04 == null) {
            return;
        }
        TD td = this.A00;
        if (A01[4].charAt(24) != 'R') {
            throw new RuntimeException();
        }
        A01[0] = "oRBMgw8vkLwlbJMhgBKrYszA0eyE8H4t";
        td.A04.A0a();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003d  */
    @Override
    public final void A03() {
        if (this.A00.A04 != null) {
            if (!this.A00.A0B) {
                if (this.A00.A0A) {
                    this.A00.A0J(EnumC1651db.A02);
                } else {
                    TD td = this.A00;
                    if (A01[4].charAt(24) != 'R') {
                        throw new RuntimeException();
                    }
                    A01[5] = "C0qKRDQoQScpUymuNxw7FdDIXXvcdKLa";
                    if (td.A0K()) {
                        this.A00.A0J(EnumC1651db.A02);
                    }
                }
            }
            this.A00.A0A = false;
            this.A00.A0B = false;
        }
    }
}
