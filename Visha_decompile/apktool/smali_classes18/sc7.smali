.class public final Lsc7;
.super Lmc7;
.source "SourceFile"

# interfaces
.implements Lm19;


# static fields
.field public static final b:Lmc7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsc7;

    invoke-direct {v0}, Lsc7;-><init>()V

    sput-object v0, Lsc7;->b:Lmc7;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmc7;-><init>()V

    return-void
.end method


# virtual methods
.method public c0(Lpd7;)V
    .locals 0

    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lpd7;)V

    return-void
.end method

.method public call()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
