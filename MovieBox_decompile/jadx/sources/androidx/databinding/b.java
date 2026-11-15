package androidx.databinding;

abstract class b extends androidx.databinding.a {

    class a extends i.a {
        a() {
        }

        @Override
        public void a(i iVar, int i10) {
            b.this.notifyChange();
        }
    }

    public b() {
    }

    public b(i... iVarArr) {
        if (iVarArr == null || iVarArr.length == 0) {
            return;
        }
        a aVar = new a();
        for (i iVar : iVarArr) {
            iVar.addOnPropertyChangedCallback(aVar);
        }
    }
}
