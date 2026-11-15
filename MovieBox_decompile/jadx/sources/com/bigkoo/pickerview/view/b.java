package com.bigkoo.pickerview.view;

import android.view.View;
import com.bigkoo.pickerview.R$id;
import com.bigkoo.pickerview.R$string;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.contrarywind.view.WheelView;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;

public class b {

    public static DateFormat f19351y = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    private View f19352a;

    private WheelView f19353b;

    private WheelView f19354c;

    private WheelView f19355d;

    private WheelView f19356e;

    private WheelView f19357f;

    private WheelView f19358g;

    private int f19359h;

    private boolean[] f19360i;

    private int f19367p;

    private int f19368q;

    private int f19369r;

    private int f19370s;

    private int f19371t;

    private float f19372u;

    private WheelView.DividerType f19373v;

    private s5.a f19375x;

    private int f19361j = 1900;

    private int f19362k = 2100;

    private int f19363l = 1;

    private int f19364m = 12;

    private int f19365n = 1;

    private int f19366o = 31;

    private boolean f19374w = false;

    class a implements p7.b {
        a() {
        }

        @Override
        public void a(int i10) {
            int iH;
            int i11 = i10 + b.this.f19361j;
            b.this.f19354c.setAdapter(new p5.a(t5.a.d(i11)));
            if (t5.a.g(i11) == 0 || b.this.f19354c.getCurrentItem() <= t5.a.g(i11) - 1) {
                b.this.f19354c.setCurrentItem(b.this.f19354c.getCurrentItem());
            } else {
                b.this.f19354c.setCurrentItem(b.this.f19354c.getCurrentItem() + 1);
            }
            if (t5.a.g(i11) == 0 || b.this.f19354c.getCurrentItem() <= t5.a.g(i11) - 1) {
                b.this.f19355d.setAdapter(new p5.a(t5.a.b(t5.a.h(i11, b.this.f19354c.getCurrentItem() + 1))));
                iH = t5.a.h(i11, b.this.f19354c.getCurrentItem() + 1);
            } else if (b.this.f19354c.getCurrentItem() == t5.a.g(i11) + 1) {
                b.this.f19355d.setAdapter(new p5.a(t5.a.b(t5.a.f(i11))));
                iH = t5.a.f(i11);
            } else {
                b.this.f19355d.setAdapter(new p5.a(t5.a.b(t5.a.h(i11, b.this.f19354c.getCurrentItem()))));
                iH = t5.a.h(i11, b.this.f19354c.getCurrentItem());
            }
            int i12 = iH - 1;
            if (b.this.f19355d.getCurrentItem() > i12) {
                b.this.f19355d.setCurrentItem(i12);
            }
            if (b.this.f19375x != null) {
                b.this.f19375x.a();
            }
        }
    }

    class C0163b implements p7.b {
        C0163b() {
        }

        @Override
        public void a(int i10) {
            int iH;
            int currentItem = b.this.f19353b.getCurrentItem() + b.this.f19361j;
            if (t5.a.g(currentItem) == 0 || i10 <= t5.a.g(currentItem) - 1) {
                int i11 = i10 + 1;
                b.this.f19355d.setAdapter(new p5.a(t5.a.b(t5.a.h(currentItem, i11))));
                iH = t5.a.h(currentItem, i11);
            } else if (b.this.f19354c.getCurrentItem() == t5.a.g(currentItem) + 1) {
                b.this.f19355d.setAdapter(new p5.a(t5.a.b(t5.a.f(currentItem))));
                iH = t5.a.f(currentItem);
            } else {
                b.this.f19355d.setAdapter(new p5.a(t5.a.b(t5.a.h(currentItem, i10))));
                iH = t5.a.h(currentItem, i10);
            }
            int i12 = iH - 1;
            if (b.this.f19355d.getCurrentItem() > i12) {
                b.this.f19355d.setCurrentItem(i12);
            }
            if (b.this.f19375x != null) {
                b.this.f19375x.a();
            }
        }
    }

    class c implements p7.b {

        final List f19378a;

        final List f19379b;

        c(List list, List list2) {
            this.f19378a = list;
            this.f19379b = list2;
        }

        @Override
        public void a(int i10) {
            int i11 = i10 + b.this.f19361j;
            b.this.f19367p = i11;
            int currentItem = b.this.f19354c.getCurrentItem();
            if (b.this.f19361j == b.this.f19362k) {
                b.this.f19354c.setAdapter(new p5.b(b.this.f19363l, b.this.f19364m));
                if (currentItem > b.this.f19354c.getAdapter().a() - 1) {
                    currentItem = b.this.f19354c.getAdapter().a() - 1;
                    b.this.f19354c.setCurrentItem(currentItem);
                }
                int i12 = currentItem + b.this.f19363l;
                if (b.this.f19363l == b.this.f19364m) {
                    b bVar = b.this;
                    bVar.F(i11, i12, bVar.f19365n, b.this.f19366o, this.f19378a, this.f19379b);
                } else if (i12 == b.this.f19363l) {
                    b bVar2 = b.this;
                    bVar2.F(i11, i12, bVar2.f19365n, 31, this.f19378a, this.f19379b);
                } else if (i12 == b.this.f19364m) {
                    b bVar3 = b.this;
                    bVar3.F(i11, i12, 1, bVar3.f19366o, this.f19378a, this.f19379b);
                } else {
                    b.this.F(i11, i12, 1, 31, this.f19378a, this.f19379b);
                }
            } else if (i11 == b.this.f19361j) {
                b.this.f19354c.setAdapter(new p5.b(b.this.f19363l, 12));
                if (currentItem > b.this.f19354c.getAdapter().a() - 1) {
                    currentItem = b.this.f19354c.getAdapter().a() - 1;
                    b.this.f19354c.setCurrentItem(currentItem);
                }
                int i13 = currentItem + b.this.f19363l;
                if (i13 == b.this.f19363l) {
                    b bVar4 = b.this;
                    bVar4.F(i11, i13, bVar4.f19365n, 31, this.f19378a, this.f19379b);
                } else {
                    b.this.F(i11, i13, 1, 31, this.f19378a, this.f19379b);
                }
            } else if (i11 == b.this.f19362k) {
                b.this.f19354c.setAdapter(new p5.b(1, b.this.f19364m));
                if (currentItem > b.this.f19354c.getAdapter().a() - 1) {
                    currentItem = b.this.f19354c.getAdapter().a() - 1;
                    b.this.f19354c.setCurrentItem(currentItem);
                }
                int i14 = 1 + currentItem;
                if (i14 == b.this.f19364m) {
                    b bVar5 = b.this;
                    bVar5.F(i11, i14, 1, bVar5.f19366o, this.f19378a, this.f19379b);
                } else {
                    b.this.F(i11, i14, 1, 31, this.f19378a, this.f19379b);
                }
            } else {
                b.this.f19354c.setAdapter(new p5.b(1, 12));
                b bVar6 = b.this;
                bVar6.F(i11, 1 + bVar6.f19354c.getCurrentItem(), 1, 31, this.f19378a, this.f19379b);
            }
            if (b.this.f19375x != null) {
                b.this.f19375x.a();
            }
        }
    }

    class d implements p7.b {

        final List f19381a;

        final List f19382b;

        d(List list, List list2) {
            this.f19381a = list;
            this.f19382b = list2;
        }

        @Override
        public void a(int i10) {
            int i11 = i10 + 1;
            if (b.this.f19361j == b.this.f19362k) {
                int i12 = (i11 + b.this.f19363l) - 1;
                if (b.this.f19363l == b.this.f19364m) {
                    b bVar = b.this;
                    bVar.F(bVar.f19367p, i12, b.this.f19365n, b.this.f19366o, this.f19381a, this.f19382b);
                } else if (b.this.f19363l == i12) {
                    b bVar2 = b.this;
                    bVar2.F(bVar2.f19367p, i12, b.this.f19365n, 31, this.f19381a, this.f19382b);
                } else if (b.this.f19364m == i12) {
                    b bVar3 = b.this;
                    bVar3.F(bVar3.f19367p, i12, 1, b.this.f19366o, this.f19381a, this.f19382b);
                } else {
                    b bVar4 = b.this;
                    bVar4.F(bVar4.f19367p, i12, 1, 31, this.f19381a, this.f19382b);
                }
            } else if (b.this.f19367p == b.this.f19361j) {
                int i13 = (i11 + b.this.f19363l) - 1;
                if (i13 == b.this.f19363l) {
                    b bVar5 = b.this;
                    bVar5.F(bVar5.f19367p, i13, b.this.f19365n, 31, this.f19381a, this.f19382b);
                } else {
                    b bVar6 = b.this;
                    bVar6.F(bVar6.f19367p, i13, 1, 31, this.f19381a, this.f19382b);
                }
            } else if (b.this.f19367p != b.this.f19362k) {
                b bVar7 = b.this;
                bVar7.F(bVar7.f19367p, i11, 1, 31, this.f19381a, this.f19382b);
            } else if (i11 == b.this.f19364m) {
                b bVar8 = b.this;
                bVar8.F(bVar8.f19367p, b.this.f19354c.getCurrentItem() + 1, 1, b.this.f19366o, this.f19381a, this.f19382b);
            } else {
                b bVar9 = b.this;
                bVar9.F(bVar9.f19367p, b.this.f19354c.getCurrentItem() + 1, 1, 31, this.f19381a, this.f19382b);
            }
            if (b.this.f19375x != null) {
                b.this.f19375x.a();
            }
        }
    }

    class e implements p7.b {
        e() {
        }

        @Override
        public void a(int i10) {
            b.this.f19375x.a();
        }
    }

    public b(View view, boolean[] zArr, int i10, int i11) {
        this.f19352a = view;
        this.f19360i = zArr;
        this.f19359h = i10;
        this.f19368q = i11;
        N(view);
    }

    private void B(int i10, int i11, int i12, boolean z10, int i13, int i14, int i15) {
        WheelView wheelView = (WheelView) this.f19352a.findViewById(R$id.year);
        this.f19353b = wheelView;
        wheelView.setAdapter(new p5.a(t5.a.e(this.f19361j, this.f19362k)));
        this.f19353b.setLabel("");
        this.f19353b.setCurrentItem(i10 - this.f19361j);
        this.f19353b.setGravity(this.f19359h);
        WheelView wheelView2 = (WheelView) this.f19352a.findViewById(R$id.month);
        this.f19354c = wheelView2;
        wheelView2.setAdapter(new p5.a(t5.a.d(i10)));
        this.f19354c.setLabel("");
        this.f19354c.setConvertMonth(true);
        int iG = t5.a.g(i10);
        if (iG == 0 || (i11 <= iG - 1 && !z10)) {
            this.f19354c.setCurrentItem(i11);
        } else {
            this.f19354c.setCurrentItem(i11 + 1);
        }
        this.f19354c.setGravity(this.f19359h);
        this.f19355d = (WheelView) this.f19352a.findViewById(R$id.day);
        if (t5.a.g(i10) == 0) {
            this.f19355d.setAdapter(new p5.a(t5.a.b(t5.a.h(i10, i11))));
        } else {
            this.f19355d.setAdapter(new p5.a(t5.a.b(t5.a.f(i10))));
        }
        this.f19355d.setLabel("");
        this.f19355d.setCurrentItem(i12 - 1);
        this.f19355d.setGravity(this.f19359h);
        WheelView wheelView3 = (WheelView) this.f19352a.findViewById(R$id.hour);
        this.f19356e = wheelView3;
        wheelView3.setAdapter(new p5.b(0, 23));
        this.f19356e.setCurrentItem(i13);
        this.f19356e.setGravity(this.f19359h);
        WheelView wheelView4 = (WheelView) this.f19352a.findViewById(R$id.min);
        this.f19357f = wheelView4;
        wheelView4.setAdapter(new p5.b(0, 59));
        this.f19357f.setCurrentItem(i14);
        this.f19357f.setGravity(this.f19359h);
        WheelView wheelView5 = (WheelView) this.f19352a.findViewById(R$id.second);
        this.f19358g = wheelView5;
        wheelView5.setAdapter(new p5.b(0, 59));
        this.f19358g.setCurrentItem(i14);
        this.f19358g.setGravity(this.f19359h);
        this.f19353b.setOnItemSelectedListener(new a());
        this.f19354c.setOnItemSelectedListener(new C0163b());
        q(this.f19355d);
        q(this.f19356e);
        q(this.f19357f);
        q(this.f19358g);
        boolean[] zArr = this.f19360i;
        if (zArr.length != 6) {
            throw new RuntimeException("type[] length is not 6");
        }
        this.f19353b.setVisibility(zArr[0] ? 0 : 8);
        this.f19354c.setVisibility(this.f19360i[1] ? 0 : 8);
        this.f19355d.setVisibility(this.f19360i[2] ? 0 : 8);
        this.f19356e.setVisibility(this.f19360i[3] ? 0 : 8);
        this.f19357f.setVisibility(this.f19360i[4] ? 0 : 8);
        this.f19358g.setVisibility(this.f19360i[5] ? 0 : 8);
        r();
    }

    public void F(int i10, int i11, int i12, int i13, List list, List list2) {
        int currentItem = this.f19355d.getCurrentItem();
        if (list.contains(String.valueOf(i11))) {
            if (i13 > 31) {
                i13 = 31;
            }
            this.f19355d.setAdapter(new p5.b(i12, i13));
        } else if (list2.contains(String.valueOf(i11))) {
            if (i13 > 30) {
                i13 = 30;
            }
            this.f19355d.setAdapter(new p5.b(i12, i13));
        } else if ((i10 % 4 != 0 || i10 % 100 == 0) && i10 % 400 != 0) {
            if (i13 > 28) {
                i13 = 28;
            }
            this.f19355d.setAdapter(new p5.b(i12, i13));
        } else {
            if (i13 > 29) {
                i13 = 29;
            }
            this.f19355d.setAdapter(new p5.b(i12, i13));
        }
        if (currentItem > this.f19355d.getAdapter().a() - 1) {
            this.f19355d.setCurrentItem(this.f19355d.getAdapter().a() - 1);
        }
    }

    private void G(int i10, int i11, int i12, int i13, int i14, int i15) {
        int i16;
        int i17;
        String[] strArr = {"1", "3", "5", "7", PrepareException.ERROR_MANIFEST_INFO, "10", "12"};
        String[] strArr2 = {"4", PrepareException.ERROR_NO_URL, PrepareException.ERROR_MINI_APP_CLOSE, PrepareException.ERROR_DOWNLOAD_PACKAGE_URL_EMPTY};
        List listAsList = Arrays.asList(strArr);
        List listAsList2 = Arrays.asList(strArr2);
        this.f19367p = i10;
        WheelView wheelView = (WheelView) this.f19352a.findViewById(R$id.year);
        this.f19353b = wheelView;
        wheelView.setAdapter(new p5.b(this.f19361j, this.f19362k));
        this.f19353b.setCurrentItem(i10 - this.f19361j);
        this.f19353b.setGravity(this.f19359h);
        WheelView wheelView2 = (WheelView) this.f19352a.findViewById(R$id.month);
        this.f19354c = wheelView2;
        wheelView2.setConvertMonth(true);
        int i18 = this.f19361j;
        int i19 = this.f19362k;
        if (i18 == i19) {
            this.f19354c.setAdapter(new p5.b(this.f19363l, this.f19364m));
            this.f19354c.setCurrentItem((i11 + 1) - this.f19363l);
        } else if (i10 == i18) {
            this.f19354c.setAdapter(new p5.b(this.f19363l, 12));
            this.f19354c.setCurrentItem((i11 + 1) - this.f19363l);
        } else if (i10 == i19) {
            this.f19354c.setAdapter(new p5.b(1, this.f19364m));
            this.f19354c.setCurrentItem(i11);
        } else {
            this.f19354c.setAdapter(new p5.b(1, 12));
            this.f19354c.setCurrentItem(i11);
        }
        this.f19354c.setGravity(this.f19359h);
        this.f19355d = (WheelView) this.f19352a.findViewById(R$id.day);
        int i20 = this.f19361j;
        int i21 = this.f19362k;
        if (i20 == i21 && this.f19363l == this.f19364m) {
            int i22 = i11 + 1;
            if (listAsList.contains(String.valueOf(i22))) {
                if (this.f19366o > 31) {
                    this.f19366o = 31;
                }
                this.f19355d.setAdapter(new p5.b(this.f19365n, this.f19366o));
            } else if (listAsList2.contains(String.valueOf(i22))) {
                if (this.f19366o > 30) {
                    this.f19366o = 30;
                }
                this.f19355d.setAdapter(new p5.b(this.f19365n, this.f19366o));
            } else if ((i10 % 4 != 0 || i10 % 100 == 0) && i10 % 400 != 0) {
                if (this.f19366o > 28) {
                    this.f19366o = 28;
                }
                this.f19355d.setAdapter(new p5.b(this.f19365n, this.f19366o));
            } else {
                if (this.f19366o > 29) {
                    this.f19366o = 29;
                }
                this.f19355d.setAdapter(new p5.b(this.f19365n, this.f19366o));
            }
            this.f19355d.setCurrentItem(i12 - this.f19365n);
        } else if (i10 == i20 && (i17 = i11 + 1) == this.f19363l) {
            if (listAsList.contains(String.valueOf(i17))) {
                this.f19355d.setAdapter(new p5.b(this.f19365n, 31));
            } else if (listAsList2.contains(String.valueOf(i17))) {
                this.f19355d.setAdapter(new p5.b(this.f19365n, 30));
            } else if ((i10 % 4 != 0 || i10 % 100 == 0) && i10 % 400 != 0) {
                this.f19355d.setAdapter(new p5.b(this.f19365n, 28));
            } else {
                this.f19355d.setAdapter(new p5.b(this.f19365n, 29));
            }
            this.f19355d.setCurrentItem(i12 - this.f19365n);
        } else if (i10 == i21 && (i16 = i11 + 1) == this.f19364m) {
            if (listAsList.contains(String.valueOf(i16))) {
                if (this.f19366o > 31) {
                    this.f19366o = 31;
                }
                this.f19355d.setAdapter(new p5.b(1, this.f19366o));
            } else if (listAsList2.contains(String.valueOf(i16))) {
                if (this.f19366o > 30) {
                    this.f19366o = 30;
                }
                this.f19355d.setAdapter(new p5.b(1, this.f19366o));
            } else if ((i10 % 4 != 0 || i10 % 100 == 0) && i10 % 400 != 0) {
                if (this.f19366o > 28) {
                    this.f19366o = 28;
                }
                this.f19355d.setAdapter(new p5.b(1, this.f19366o));
            } else {
                if (this.f19366o > 29) {
                    this.f19366o = 29;
                }
                this.f19355d.setAdapter(new p5.b(1, this.f19366o));
            }
            this.f19355d.setCurrentItem(i12 - 1);
        } else {
            int i23 = i11 + 1;
            if (listAsList.contains(String.valueOf(i23))) {
                this.f19355d.setAdapter(new p5.b(1, 31));
            } else if (listAsList2.contains(String.valueOf(i23))) {
                this.f19355d.setAdapter(new p5.b(1, 30));
            } else if ((i10 % 4 != 0 || i10 % 100 == 0) && i10 % 400 != 0) {
                this.f19355d.setAdapter(new p5.b(1, 28));
            } else {
                this.f19355d.setAdapter(new p5.b(1, 29));
            }
            this.f19355d.setCurrentItem(i12 - 1);
        }
        this.f19355d.setGravity(this.f19359h);
        WheelView wheelView3 = (WheelView) this.f19352a.findViewById(R$id.hour);
        this.f19356e = wheelView3;
        wheelView3.setAdapter(new p5.b(0, 23));
        this.f19356e.setCurrentItem(i13);
        this.f19356e.setGravity(this.f19359h);
        WheelView wheelView4 = (WheelView) this.f19352a.findViewById(R$id.min);
        this.f19357f = wheelView4;
        wheelView4.setAdapter(new p5.b(0, 59));
        this.f19357f.setCurrentItem(i14);
        this.f19357f.setGravity(this.f19359h);
        WheelView wheelView5 = (WheelView) this.f19352a.findViewById(R$id.second);
        this.f19358g = wheelView5;
        wheelView5.setAdapter(new p5.b(0, 59));
        this.f19358g.setCurrentItem(i15);
        this.f19358g.setGravity(this.f19359h);
        this.f19353b.setOnItemSelectedListener(new c(listAsList, listAsList2));
        this.f19354c.setOnItemSelectedListener(new d(listAsList, listAsList2));
        q(this.f19355d);
        q(this.f19356e);
        q(this.f19357f);
        q(this.f19358g);
        boolean[] zArr = this.f19360i;
        if (zArr.length != 6) {
            throw new IllegalArgumentException("type[] length is not 6");
        }
        this.f19353b.setVisibility(zArr[0] ? 0 : 8);
        this.f19354c.setVisibility(this.f19360i[1] ? 0 : 8);
        this.f19355d.setVisibility(this.f19360i[2] ? 0 : 8);
        this.f19356e.setVisibility(this.f19360i[3] ? 0 : 8);
        this.f19357f.setVisibility(this.f19360i[4] ? 0 : 8);
        this.f19358g.setVisibility(this.f19360i[5] ? 0 : 8);
        r();
    }

    private void I() {
        this.f19355d.setTextColorCenter(this.f19370s);
        this.f19354c.setTextColorCenter(this.f19370s);
        this.f19353b.setTextColorCenter(this.f19370s);
        this.f19356e.setTextColorCenter(this.f19370s);
        this.f19357f.setTextColorCenter(this.f19370s);
        this.f19358g.setTextColorCenter(this.f19370s);
    }

    private void K() {
        this.f19355d.setTextColorOut(this.f19369r);
        this.f19354c.setTextColorOut(this.f19369r);
        this.f19353b.setTextColorOut(this.f19369r);
        this.f19356e.setTextColorOut(this.f19369r);
        this.f19357f.setTextColorOut(this.f19369r);
        this.f19358g.setTextColorOut(this.f19369r);
    }

    private String n() {
        int currentItem;
        boolean z10;
        StringBuilder sb2 = new StringBuilder();
        int currentItem2 = this.f19353b.getCurrentItem() + this.f19361j;
        if (t5.a.g(currentItem2) == 0 || (this.f19354c.getCurrentItem() + 1) - t5.a.g(currentItem2) <= 0) {
            int currentItem3 = this.f19354c.getCurrentItem();
            currentItem = currentItem3 + 1;
            z10 = false;
        } else if ((this.f19354c.getCurrentItem() + 1) - t5.a.g(currentItem2) == 1) {
            currentItem = this.f19354c.getCurrentItem();
            z10 = true;
        } else {
            currentItem = this.f19354c.getCurrentItem();
            z10 = false;
        }
        int[] iArrB = t5.b.b(currentItem2, currentItem, this.f19355d.getCurrentItem() + 1, z10);
        sb2.append(iArrB[0]);
        sb2.append("-");
        sb2.append(iArrB[1]);
        sb2.append("-");
        sb2.append(iArrB[2]);
        sb2.append(" ");
        sb2.append(this.f19356e.getCurrentItem());
        sb2.append(":");
        sb2.append(this.f19357f.getCurrentItem());
        sb2.append(":");
        sb2.append(this.f19358g.getCurrentItem());
        return sb2.toString();
    }

    private void q(WheelView wheelView) {
        if (this.f19375x != null) {
            wheelView.setOnItemSelectedListener(new e());
        }
    }

    private void r() {
        this.f19355d.setTextSize(this.f19368q);
        this.f19354c.setTextSize(this.f19368q);
        this.f19353b.setTextSize(this.f19368q);
        this.f19356e.setTextSize(this.f19368q);
        this.f19357f.setTextSize(this.f19368q);
        this.f19358g.setTextSize(this.f19368q);
    }

    private void t() {
        this.f19355d.setDividerColor(this.f19371t);
        this.f19354c.setDividerColor(this.f19371t);
        this.f19353b.setDividerColor(this.f19371t);
        this.f19356e.setDividerColor(this.f19371t);
        this.f19357f.setDividerColor(this.f19371t);
        this.f19358g.setDividerColor(this.f19371t);
    }

    private void v() {
        this.f19355d.setDividerType(this.f19373v);
        this.f19354c.setDividerType(this.f19373v);
        this.f19353b.setDividerType(this.f19373v);
        this.f19356e.setDividerType(this.f19373v);
        this.f19357f.setDividerType(this.f19373v);
        this.f19358g.setDividerType(this.f19373v);
    }

    private void z() {
        this.f19355d.setLineSpacingMultiplier(this.f19372u);
        this.f19354c.setLineSpacingMultiplier(this.f19372u);
        this.f19353b.setLineSpacingMultiplier(this.f19372u);
        this.f19356e.setLineSpacingMultiplier(this.f19372u);
        this.f19357f.setLineSpacingMultiplier(this.f19372u);
        this.f19358g.setLineSpacingMultiplier(this.f19372u);
    }

    public void A(float f10) {
        this.f19372u = f10;
        z();
    }

    public void C(boolean z10) {
        this.f19374w = z10;
    }

    public void D(int i10, int i11, int i12, int i13, int i14, int i15) {
        if (!this.f19374w) {
            G(i10, i11, i12, i13, i14, i15);
        } else {
            int[] iArrD = t5.b.d(i10, i11 + 1, i12);
            B(iArrD[0], iArrD[1] - 1, iArrD[2], iArrD[3] == 1, i13, i14, i15);
        }
    }

    public void E(Calendar calendar, Calendar calendar2) {
        if (calendar == null && calendar2 != null) {
            int i10 = calendar2.get(1);
            int i11 = calendar2.get(2) + 1;
            int i12 = calendar2.get(5);
            int i13 = this.f19361j;
            if (i10 > i13) {
                this.f19362k = i10;
                this.f19364m = i11;
                this.f19366o = i12;
                return;
            } else {
                if (i10 == i13) {
                    int i14 = this.f19363l;
                    if (i11 > i14) {
                        this.f19362k = i10;
                        this.f19364m = i11;
                        this.f19366o = i12;
                        return;
                    } else {
                        if (i11 != i14 || i12 <= this.f19365n) {
                            return;
                        }
                        this.f19362k = i10;
                        this.f19364m = i11;
                        this.f19366o = i12;
                        return;
                    }
                }
                return;
            }
        }
        if (calendar == null || calendar2 != null) {
            if (calendar == null || calendar2 == null) {
                return;
            }
            this.f19361j = calendar.get(1);
            this.f19362k = calendar2.get(1);
            this.f19363l = calendar.get(2) + 1;
            this.f19364m = calendar2.get(2) + 1;
            this.f19365n = calendar.get(5);
            this.f19366o = calendar2.get(5);
            return;
        }
        int i15 = calendar.get(1);
        int i16 = calendar.get(2) + 1;
        int i17 = calendar.get(5);
        int i18 = this.f19362k;
        if (i15 < i18) {
            this.f19363l = i16;
            this.f19365n = i17;
            this.f19361j = i15;
        } else if (i15 == i18) {
            int i19 = this.f19364m;
            if (i16 < i19) {
                this.f19363l = i16;
                this.f19365n = i17;
                this.f19361j = i15;
            } else {
                if (i16 != i19 || i17 >= this.f19366o) {
                    return;
                }
                this.f19363l = i16;
                this.f19365n = i17;
                this.f19361j = i15;
            }
        }
    }

    public void H(int i10) {
        this.f19361j = i10;
    }

    public void J(int i10) {
        this.f19370s = i10;
        I();
    }

    public void L(int i10) {
        this.f19369r = i10;
        K();
    }

    public void M(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.f19355d.setTextXOffset(i10);
        this.f19354c.setTextXOffset(i11);
        this.f19353b.setTextXOffset(i12);
        this.f19356e.setTextXOffset(i13);
        this.f19357f.setTextXOffset(i14);
        this.f19358g.setTextXOffset(i15);
    }

    public void N(View view) {
        this.f19352a = view;
    }

    public String o() {
        if (this.f19374w) {
            return n();
        }
        StringBuilder sb2 = new StringBuilder();
        if (this.f19367p == this.f19361j) {
            int currentItem = this.f19354c.getCurrentItem();
            int i10 = this.f19363l;
            if (currentItem + i10 == i10) {
                sb2.append(this.f19353b.getCurrentItem() + this.f19361j);
                sb2.append("-");
                sb2.append(this.f19354c.getCurrentItem() + this.f19363l);
                sb2.append("-");
                sb2.append(this.f19355d.getCurrentItem() + this.f19365n);
                sb2.append(" ");
                sb2.append(this.f19356e.getCurrentItem());
                sb2.append(":");
                sb2.append(this.f19357f.getCurrentItem());
                sb2.append(":");
                sb2.append(this.f19358g.getCurrentItem());
            } else {
                sb2.append(this.f19353b.getCurrentItem() + this.f19361j);
                sb2.append("-");
                sb2.append(this.f19354c.getCurrentItem() + this.f19363l);
                sb2.append("-");
                sb2.append(this.f19355d.getCurrentItem() + 1);
                sb2.append(" ");
                sb2.append(this.f19356e.getCurrentItem());
                sb2.append(":");
                sb2.append(this.f19357f.getCurrentItem());
                sb2.append(":");
                sb2.append(this.f19358g.getCurrentItem());
            }
        } else {
            sb2.append(this.f19353b.getCurrentItem() + this.f19361j);
            sb2.append("-");
            sb2.append(this.f19354c.getCurrentItem() + 1);
            sb2.append("-");
            sb2.append(this.f19355d.getCurrentItem() + 1);
            sb2.append(" ");
            sb2.append(this.f19356e.getCurrentItem());
            sb2.append(":");
            sb2.append(this.f19357f.getCurrentItem());
            sb2.append(":");
            sb2.append(this.f19358g.getCurrentItem());
        }
        return sb2.toString();
    }

    public void p(boolean z10) {
        this.f19355d.isCenterLabel(z10);
        this.f19354c.isCenterLabel(z10);
        this.f19353b.isCenterLabel(z10);
        this.f19356e.isCenterLabel(z10);
        this.f19357f.isCenterLabel(z10);
        this.f19358g.isCenterLabel(z10);
    }

    public void s(boolean z10) {
        this.f19353b.setCyclic(z10);
        this.f19354c.setCyclic(z10);
        this.f19355d.setCyclic(z10);
        this.f19356e.setCyclic(z10);
        this.f19357f.setCyclic(z10);
        this.f19358g.setCyclic(z10);
    }

    public void u(int i10) {
        this.f19371t = i10;
        t();
    }

    public void w(WheelView.DividerType dividerType) {
        this.f19373v = dividerType;
        v();
    }

    public void x(int i10) {
        this.f19362k = i10;
    }

    public void y(String str, String str2, String str3, String str4, String str5, String str6) {
        if (this.f19374w) {
            return;
        }
        if (str != null) {
            this.f19353b.setLabel(str);
        } else {
            this.f19353b.setLabel(this.f19352a.getContext().getString(R$string.pickerview_year));
        }
        if (str2 != null) {
            this.f19354c.setLabel(str2);
        } else {
            this.f19354c.setLabel(this.f19352a.getContext().getString(R$string.pickerview_month));
        }
        if (str3 != null) {
            this.f19355d.setLabel(str3);
        } else {
            this.f19355d.setLabel(this.f19352a.getContext().getString(R$string.pickerview_day));
        }
        if (str4 != null) {
            this.f19356e.setLabel(str4);
        } else {
            this.f19356e.setLabel(this.f19352a.getContext().getString(R$string.pickerview_hours));
        }
        if (str5 != null) {
            this.f19357f.setLabel(str5);
        } else {
            this.f19357f.setLabel(this.f19352a.getContext().getString(R$string.pickerview_minutes));
        }
        if (str6 != null) {
            this.f19358g.setLabel(str6);
        } else {
            this.f19358g.setLabel(this.f19352a.getContext().getString(R$string.pickerview_seconds));
        }
    }
}
