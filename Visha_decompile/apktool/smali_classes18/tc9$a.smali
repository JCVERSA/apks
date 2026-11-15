.class public final Ltc9$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpc9;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltc9;->b(Ls74;)Lpc9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls74;


# direct methods
.method public constructor <init>(Ls74;)V
    .locals 0

    iput-object p1, p0, Ltc9$a;->a:Ls74;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Ltc9$a;->a:Ls74;

    invoke-static {p0}, Ltc9;->a(Ls74;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
