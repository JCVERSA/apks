.class public Ls62$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls62;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final synthetic d:Ls62;


# direct methods
.method public constructor <init>(Ls62;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ls62$b;->d:Ls62;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ls62$b;->a:Ljava/lang/String;

    iput-object p3, p0, Ls62$b;->b:Ljava/lang/String;

    iput-object p4, p0, Ls62$b;->c:Ljava/lang/String;

    return-void
.end method
