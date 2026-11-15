.class public final Ltw8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltw8$a;
    }
.end annotation


# static fields
.field public static final c:Ltw8$a;


# instance fields
.field public final a:Le92;

.field public final b:Lmv7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltw8$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltw8$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltw8;->c:Ltw8$a;

    return-void
.end method

.method public constructor <init>(Le92;Lmv7;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ltw8;->a:Le92;

    .line 4
    iput-object p2, p0, Ltw8;->b:Lmv7;

    return-void
.end method

.method public synthetic constructor <init>(Le92;Lmv7;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ltw8;-><init>(Le92;Lmv7;)V

    return-void
.end method


# virtual methods
.method public final a()Le92;
    .locals 0

    iget-object p0, p0, Ltw8;->a:Le92;

    return-object p0
.end method

.method public final b()Lqq6;
    .locals 0

    iget-object p0, p0, Ltw8;->a:Le92;

    invoke-virtual {p0}, Le92;->p()Lqq6;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lmv7;
    .locals 0

    iget-object p0, p0, Ltw8;->b:Lmv7;

    return-object p0
.end method
