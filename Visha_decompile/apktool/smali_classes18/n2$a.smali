.class public abstract Ln2$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final a:Lde5;

.field public final b:I


# direct methods
.method public constructor <init>(Lde5;I)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2$a;->a:Lde5;

    iput p2, p0, Ln2$a;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ln2;)Ljava/lang/Object;
    .locals 1

    const-string v0, "thisRef"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln2;->b()Lah;

    move-result-object p1

    iget p0, p0, Ln2$a;->b:I

    invoke-virtual {p1, p0}, Lah;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
