.class public Ltw7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ltw7;

.field public static final d:Ltw7;


# instance fields
.field public final a:Z

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltw7;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ltw7;-><init>(ZZ)V

    sput-object v0, Ltw7;->c:Ltw7;

    new-instance v0, Ltw7;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Ltw7;-><init>(ZZ)V

    sput-object v0, Ltw7;->d:Ltw7;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ltw7;->a:Z

    iput-boolean p2, p0, Ltw7;->b:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-boolean p0, p0, Ltw7;->b:Z

    if-nez p0, :cond_0

    invoke-static {p1}, Lv17;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public b(Lorg/jsoup/nodes/b;)Lorg/jsoup/nodes/b;
    .locals 0

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Ltw7;->b:Z

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/nodes/b;->A()V

    :cond_0
    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-boolean p0, p0, Ltw7;->a:Z

    if-nez p0, :cond_0

    invoke-static {p1}, Lv17;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Ltw7;->b:Z

    return p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Ltw7;->a:Z

    return p0
.end method
