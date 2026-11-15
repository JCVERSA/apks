.class public Lyda$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyda;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Las8;

.field public b:Z

.field public c:[Lcom/google/android/gms/common/Feature;

.field public d:I


# direct methods
.method public synthetic constructor <init>(Lu0e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyda$a;->b:Z

    const/4 p1, 0x0

    iput p1, p0, Lyda$a;->d:I

    return-void
.end method

.method public static bridge synthetic f(Lyda$a;)Las8;
    .locals 0

    iget-object p0, p0, Lyda$a;->a:Las8;

    return-object p0
.end method


# virtual methods
.method public a()Lyda;
    .locals 4

    iget-object v0, p0, Lyda$a;->a:Las8;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "execute parameter required"

    invoke-static {v0, v1}, Lwd8;->b(ZLjava/lang/Object;)V

    new-instance v0, Lt0e;

    iget-object v1, p0, Lyda$a;->c:[Lcom/google/android/gms/common/Feature;

    iget-boolean v2, p0, Lyda$a;->b:Z

    iget v3, p0, Lyda$a;->d:I

    invoke-direct {v0, p0, v1, v2, v3}, Lt0e;-><init>(Lyda$a;[Lcom/google/android/gms/common/Feature;ZI)V

    return-object v0
.end method

.method public b(Las8;)Lyda$a;
    .locals 0

    iput-object p1, p0, Lyda$a;->a:Las8;

    return-object p0
.end method

.method public c(Z)Lyda$a;
    .locals 0

    iput-boolean p1, p0, Lyda$a;->b:Z

    return-object p0
.end method

.method public varargs d([Lcom/google/android/gms/common/Feature;)Lyda$a;
    .locals 0

    iput-object p1, p0, Lyda$a;->c:[Lcom/google/android/gms/common/Feature;

    return-object p0
.end method

.method public e(I)Lyda$a;
    .locals 0

    iput p1, p0, Lyda$a;->d:I

    return-object p0
.end method
