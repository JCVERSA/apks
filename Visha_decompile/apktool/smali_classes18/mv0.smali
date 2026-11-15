.class public final Lmv0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmv0;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()C
    .locals 1

    iget-object p0, p0, Lmv0;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmv0;->a:Ljava/lang/String;

    return-object p0
.end method
