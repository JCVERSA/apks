.class public final Lbvc$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/util/function/Function;

.field public e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lbvc$a;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Function;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Function;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lbvc$a;->e:I

    .line 4
    iput-object p1, p0, Lbvc$a;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lbvc$a;->b:Ljava/lang/String;

    .line 6
    iput p3, p0, Lbvc$a;->c:I

    .line 7
    iput-object p4, p0, Lbvc$a;->d:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public a(Lbvc$a;)Z
    .locals 0

    iget-object p0, p0, Lbvc$a;->a:Ljava/lang/String;

    iget-object p1, p1, Lbvc$a;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
