.class public Lw9g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lebg;

.field public final b:Lejf;


# direct methods
.method public constructor <init>(Lebg;Lejf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw9g;->a:Lebg;

    iput-object p2, p0, Lw9g;->b:Lejf;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lw9g;->b:Lejf;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lejf;->zzG()Landroid/webkit/WebView;

    move-result-object p0

    return-object p0
.end method

.method public final b()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lw9g;->b:Lejf;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lejf;->zzG()Landroid/webkit/WebView;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()Lejf;
    .locals 0

    iget-object p0, p0, Lw9g;->b:Lejf;

    return-object p0
.end method

.method public final d(Ljava/util/concurrent/Executor;)Li8g;
    .locals 2

    new-instance v0, Li8g;

    new-instance v1, Lv9g;

    iget-object p0, p0, Lw9g;->b:Lejf;

    invoke-direct {v1, p0}, Lv9g;-><init>(Lejf;)V

    invoke-direct {v0, v1, p1}, Li8g;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final e()Lebg;
    .locals 0

    iget-object p0, p0, Lw9g;->a:Lebg;

    return-object p0
.end method

.method public f(Lzxf;)Ljava/util/Set;
    .locals 1

    sget-object p0, Lzef;->g:Lg8i;

    new-instance v0, Li8g;

    invoke-direct {v0, p1, p0}, Li8g;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public g(Lzxf;)Ljava/util/Set;
    .locals 1

    sget-object p0, Lzef;->g:Lg8i;

    new-instance v0, Li8g;

    invoke-direct {v0, p1, p0}, Li8g;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
