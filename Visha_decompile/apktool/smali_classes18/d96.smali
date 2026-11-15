.class public final Ld96;
.super Lb96;
.source "SourceFile"

# interfaces
.implements Lm19;


# static fields
.field public static final b:Ld96;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld96;

    invoke-direct {v0}, Ld96;-><init>()V

    sput-object v0, Ld96;->b:Ld96;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb96;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public j(Lk96;)V
    .locals 0

    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lk96;)V

    return-void
.end method
