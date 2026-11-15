.class public Lfs6$b;
.super Ljava/lang/ref/SoftReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfs6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lfs6$a;Ljava/lang/ref/ReferenceQueue;)V
    .locals 1

    invoke-virtual {p1}, Lfs6$a;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {p1}, Lfs6$a;->a()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lfs6$b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfs6$b;->a:Ljava/lang/Object;

    return-object p0
.end method
