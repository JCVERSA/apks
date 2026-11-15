.class public final synthetic Lfl9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw6a;


# instance fields
.field public final synthetic b:Landroidx/media3/common/SimpleBasePlayer;

.field public final synthetic c:Landroidx/media3/common/SimpleBasePlayer$State;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfl9;->b:Landroidx/media3/common/SimpleBasePlayer;

    iput-object p2, p0, Lfl9;->c:Landroidx/media3/common/SimpleBasePlayer$State;

    iput p3, p0, Lfl9;->d:I

    iput p4, p0, Lfl9;->e:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lfl9;->b:Landroidx/media3/common/SimpleBasePlayer;

    iget-object v1, p0, Lfl9;->c:Landroidx/media3/common/SimpleBasePlayer$State;

    iget v2, p0, Lfl9;->d:I

    iget p0, p0, Lfl9;->e:I

    invoke-static {v0, v1, v2, p0}, Landroidx/media3/common/SimpleBasePlayer;->c(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;II)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method
