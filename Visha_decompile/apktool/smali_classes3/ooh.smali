.class public final Looh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljph;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Looh;->a:Ljph;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Looh;->a:Ljph;

    if-eqz p0, :cond_0

    iget-object p0, p0, Ljph;->a:Loph;

    invoke-static {p0}, Loph;->c(Loph;)V

    :cond_0
    return-void
.end method

.method public final b(Ljph;)V
    .locals 0

    iput-object p1, p0, Looh;->a:Ljph;

    return-void
.end method
