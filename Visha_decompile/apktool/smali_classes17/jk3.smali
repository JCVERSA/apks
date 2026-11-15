.class public final Ljk3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljk3$a;
    }
.end annotation


# static fields
.field public static final b:Ljk3$a;


# instance fields
.field public final a:Lns7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljk3$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljk3$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ljk3;->b:Ljk3$a;

    return-void
.end method

.method public constructor <init>(Lns7;)V
    .locals 1

    const-string v0, "optional"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljk3;->a:Lns7;

    return-void
.end method

.method public static final a()Ljk3;
    .locals 1

    sget-object v0, Ljk3;->b:Ljk3$a;

    invoke-virtual {v0}, Ljk3$a;->a()Ljk3;

    move-result-object v0

    return-object v0
.end method

.method public static final c(Ljava/lang/Object;)Ljk3;
    .locals 1

    sget-object v0, Ljk3;->b:Ljk3$a;

    invoke-virtual {v0, p0}, Ljk3$a;->b(Ljava/lang/Object;)Ljk3;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Lns7;
    .locals 0

    iget-object p0, p0, Ljk3;->a:Lns7;

    return-object p0
.end method
