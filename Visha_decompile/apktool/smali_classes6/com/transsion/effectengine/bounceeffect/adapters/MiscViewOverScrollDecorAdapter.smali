.class public Lcom/transsion/effectengine/bounceeffect/adapters/MiscViewOverScrollDecorAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/adapters/z1OoOfor;


# instance fields
.field public final z1OoOdo:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/adapters/MiscViewOverScrollDecorAdapter;->z1OoOdo:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/adapters/MiscViewOverScrollDecorAdapter;->z1OoOdo:Landroid/view/View;

    return-object p0
.end method

.method public isInAbsoluteEnd()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isInAbsoluteStart()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
