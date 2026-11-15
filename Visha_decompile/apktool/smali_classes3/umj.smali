.class public final Lumj;
.super Lpmj;
.source "SourceFile"


# static fields
.field public static final e:Ljava/lang/Object;


# instance fields
.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lumj;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lw4f;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lpmj;-><init>(Lw4f;)V

    iput-object p2, p0, Lumj;->c:Ljava/lang/Object;

    iput-object p3, p0, Lumj;->d:Ljava/lang/Object;

    return-void
.end method

.method public static q(Lcme;)Lumj;
    .locals 3

    new-instance v0, Lumj;

    new-instance v1, Lvmj;

    invoke-direct {v1, p0}, Lvmj;-><init>(Lcme;)V

    sget-object p0, Le4f;->o:Ljava/lang/Object;

    sget-object v2, Lumj;->e:Ljava/lang/Object;

    invoke-direct {v0, v1, p0, v2}, Lumj;-><init>(Lw4f;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static r(Lw4f;Ljava/lang/Object;Ljava/lang/Object;)Lumj;
    .locals 1

    new-instance v0, Lumj;

    invoke-direct {v0, p0, p1, p2}, Lumj;-><init>(Lw4f;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static bridge synthetic s(Lumj;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lumj;->d:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    sget-object v0, Lumj;->e:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lumj;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    iget-object p0, p0, Lpmj;->b:Lw4f;

    invoke-virtual {p0, p1}, Lw4f;->a(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final d(ILy2f;Z)Ly2f;
    .locals 1

    iget-object v0, p0, Lpmj;->b:Lw4f;

    invoke-virtual {v0, p1, p2, p3}, Lw4f;->d(ILy2f;Z)Ly2f;

    iget-object p1, p2, Ly2f;->b:Ljava/lang/Object;

    iget-object p0, p0, Lumj;->d:Ljava/lang/Object;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    sget-object p0, Lumj;->e:Ljava/lang/Object;

    iput-object p0, p2, Ly2f;->b:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final e(ILe4f;J)Le4f;
    .locals 1

    iget-object v0, p0, Lpmj;->b:Lw4f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw4f;->e(ILe4f;J)Le4f;

    iget-object p1, p2, Le4f;->a:Ljava/lang/Object;

    iget-object p0, p0, Lumj;->c:Ljava/lang/Object;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Le4f;->o:Ljava/lang/Object;

    iput-object p0, p2, Le4f;->a:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final f(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lpmj;->b:Lw4f;

    invoke-virtual {v0, p1}, Lw4f;->f(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lumj;->d:Ljava/lang/Object;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lumj;->e:Ljava/lang/Object;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final p(Lw4f;)Lumj;
    .locals 2

    iget-object v0, p0, Lumj;->c:Ljava/lang/Object;

    iget-object p0, p0, Lumj;->d:Ljava/lang/Object;

    new-instance v1, Lumj;

    invoke-direct {v1, p1, v0, p0}, Lumj;-><init>(Lw4f;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
