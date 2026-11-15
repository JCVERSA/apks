.class public final Lbh$b;
.super Lb3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbh;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public d:I

.field public final synthetic e:Lbh;


# direct methods
.method public constructor <init>(Lbh;)V
    .locals 0

    iput-object p1, p0, Lbh$b;->e:Lbh;

    invoke-direct {p0}, Lb3;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lbh$b;->d:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    :cond_0
    iget v0, p0, Lbh$b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbh$b;->d:I

    iget-object v1, p0, Lbh$b;->e:Lbh;

    invoke-static {v1}, Lbh;->f(Lbh;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lbh$b;->e:Lbh;

    invoke-static {v0}, Lbh;->f(Lbh;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lbh$b;->d:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    :cond_1
    iget v0, p0, Lbh$b;->d:I

    iget-object v1, p0, Lbh$b;->e:Lbh;

    invoke-static {v1}, Lbh;->f(Lbh;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lb3;->c()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbh$b;->e:Lbh;

    invoke-static {v0}, Lbh;->f(Lbh;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lbh$b;->d:I

    aget-object v0, v0, v1

    const-string v1, "null cannot be cast to non-null type T of org.jetbrains.kotlin.util.ArrayMapImpl"

    invoke-static {v0, v1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lb3;->d(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
