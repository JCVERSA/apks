package kotlin.reflect.jvm.internal.impl.renderer;

import java.util.Set;

public interface b {

    public static final class a {
        public static boolean a(b bVar) {
            return bVar.e().getIncludeAnnotationArguments();
        }

        public static boolean b(b bVar) {
            return bVar.e().getIncludeEmptyAnnotationArguments();
        }
    }

    void a(ParameterNameRenderingPolicy parameterNameRenderingPolicy);

    boolean b();

    Set c();

    boolean d();

    AnnotationArgumentsRenderingPolicy e();

    void f(Set set);

    void g(Set set);

    void h(boolean z);

    void i(boolean z);

    void j(boolean z);

    void k(boolean z);

    void l(boolean z);

    void m(boolean z);

    void n(boolean z);

    void o(RenderingFormat renderingFormat);

    void p(AnnotationArgumentsRenderingPolicy annotationArgumentsRenderingPolicy);

    void q(kotlin.reflect.jvm.internal.impl.renderer.a aVar);

    void r(boolean z);
}
