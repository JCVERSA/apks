.class Lcom/hunantv/imgo/log/i$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/log/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/imgo/log/i;

.field private final b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/hunantv/imgo/log/i;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/log/i$c;->a:Lcom/hunantv/imgo/log/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/hunantv/imgo/log/i$c;->b:Ljava/lang/String;

    iput p3, p0, Lcom/hunantv/imgo/log/i$c;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hunantv/imgo/log/i$c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/hunantv/imgo/log/i$c;->c:I

    return-void
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lcom/hunantv/imgo/log/i$c;->c:I

    return p0
.end method
