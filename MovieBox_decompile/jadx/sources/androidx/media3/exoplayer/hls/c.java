package androidx.media3.exoplayer.hls;

public final class c implements f {

    private final androidx.media3.datasource.a.InterfaceC0085a f11388a;

    public c(androidx.media3.datasource.a.InterfaceC0085a interfaceC0085a) {
        this.f11388a = interfaceC0085a;
    }

    @Override
    public androidx.media3.datasource.a a(int i10) {
        return this.f11388a.createDataSource();
    }
}
