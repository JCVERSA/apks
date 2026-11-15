.class public Ls62$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls62;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final synthetic c:Ls62;


# direct methods
.method public constructor <init>(Ls62;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ls62$a;->c:Ls62;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ls62$a;->a:Ljava/lang/String;

    iput-object p3, p0, Ls62$a;->b:Ljava/lang/String;

    return-void
.end method
