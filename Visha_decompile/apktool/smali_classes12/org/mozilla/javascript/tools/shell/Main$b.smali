.class public Lorg/mozilla/javascript/tools/shell/Main$b;
.super Ljava/lang/ref/SoftReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/tools/shell/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLorg/mozilla/javascript/Script;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0

    invoke-direct {p0, p3, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p1, p0, Lorg/mozilla/javascript/tools/shell/Main$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/mozilla/javascript/tools/shell/Main$b;->b:[B

    return-void
.end method
