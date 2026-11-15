.class public final Lol0;
.super Lse0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lol0$a;
    }
.end annotation


# static fields
.field public static final g:Lol0$a;

.field public static final h:Lol0;

.field public static final i:Lol0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lol0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lol0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lol0;->g:Lol0$a;

    new-instance v0, Lol0;

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    filled-new-array {v2, v3, v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Lol0;-><init>([I)V

    sput-object v0, Lol0;->h:Lol0;

    new-instance v0, Lol0;

    new-array v1, v3, [I

    invoke-direct {v0, v1}, Lol0;-><init>([I)V

    sput-object v0, Lol0;->i:Lol0;

    return-void
.end method

.method public varargs constructor <init>([I)V
    .locals 1

    const-string v0, "numbers"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lse0;-><init>([I)V

    return-void
.end method


# virtual methods
.method public h()Z
    .locals 1

    sget-object v0, Lol0;->h:Lol0;

    invoke-virtual {p0, v0}, Lse0;->f(Lse0;)Z

    move-result p0

    return p0
.end method
