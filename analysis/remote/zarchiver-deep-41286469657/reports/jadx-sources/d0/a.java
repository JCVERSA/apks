package d0;

import java.util.ArrayList;

public final class a {

    public final Integer[] f519a;

    public final String[] f520b;

    public a(Integer[] numArr, String[] strArr) {
        this.f519a = numArr;
        this.f520b = strArr;
    }

    public a(ArrayList<Integer> arrayList, ArrayList<String> arrayList2) {
        this((Integer[]) arrayList.toArray(new Integer[0]), (String[]) arrayList2.toArray(new String[0]));
    }
}
