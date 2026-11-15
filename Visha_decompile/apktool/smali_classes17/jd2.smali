.class public final Ljd2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljd2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljd2;

    invoke-direct {v0}, Ljd2;-><init>()V

    sput-object v0, Ljd2;->a:Ljd2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(ZLoj8;Loj8;)Lvq2;
    .locals 1

    const-string v0, "joinedStateSwitcher"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multipleStateSwitcher"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-interface {p2}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "multipleStateSwitcher.get()"

    :goto_0
    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lvq2;

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "joinedStateSwitcher.get()"

    goto :goto_0

    :goto_1
    return-object p0
.end method
