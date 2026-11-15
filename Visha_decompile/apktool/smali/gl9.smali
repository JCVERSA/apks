.class public final synthetic Lgl9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgj;


# instance fields
.field public final synthetic a:Lim5;


# direct methods
.method public synthetic constructor <init>(Lim5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgl9;->a:Lim5;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Lim5;
    .locals 0

    iget-object p0, p0, Lgl9;->a:Lim5;

    invoke-static {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->r(Lim5;Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method
