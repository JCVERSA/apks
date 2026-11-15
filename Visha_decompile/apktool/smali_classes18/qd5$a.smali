.class public final Lqd5$a;
.super Lqd5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqd5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final j:Lqd5;


# direct methods
.method public constructor <init>(Lqd5;)V
    .locals 1

    const-string v0, "elementType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lqd5;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lqd5$a;->j:Lqd5;

    return-void
.end method


# virtual methods
.method public final i()Lqd5;
    .locals 0

    iget-object p0, p0, Lqd5$a;->j:Lqd5;

    return-object p0
.end method
