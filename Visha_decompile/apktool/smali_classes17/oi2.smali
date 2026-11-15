.class public interface abstract Loi2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Loi2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lni2;

    invoke-direct {v0}, Lni2;-><init>()V

    sput-object v0, Loi2;->a:Loi2;

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lao2;)Ljn5;
    .locals 0

    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "To load patch you must provide implementation of DivDownloader to your DivConfiguration. "

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static synthetic b(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lao2;)Ljn5;
    .locals 0

    invoke-static {p0, p1, p2}, Loi2;->a(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lao2;)Ljn5;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract c(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/String;Lao2;)Ljn5;
.end method
