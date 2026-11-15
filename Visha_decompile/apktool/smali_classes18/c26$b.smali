.class public final Lc26$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc26;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lc26;


# direct methods
.method public constructor <init>(Lc26;)V
    .locals 1

    const-string v0, "match"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc26$b;->a:Lc26;

    return-void
.end method


# virtual methods
.method public final a()Lc26;
    .locals 0

    iget-object p0, p0, Lc26$b;->a:Lc26;

    return-object p0
.end method
