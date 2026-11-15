.class public Lv55$a;
.super La24;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv55;->e(Ljava/lang/Iterable;Lhe8;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/Iterable;

.field public final synthetic d:Lhe8;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lhe8;)V
    .locals 0

    iput-object p1, p0, Lv55$a;->c:Ljava/lang/Iterable;

    iput-object p2, p0, Lv55$a;->d:Lhe8;

    invoke-direct {p0}, La24;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lv55$a;->c:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object p0, p0, Lv55$a;->d:Lhe8;

    invoke-static {v0, p0}, Lcom/google/common/collect/Iterators;->k(Ljava/util/Iterator;Lhe8;)Ldgb;

    move-result-object p0

    return-object p0
.end method
