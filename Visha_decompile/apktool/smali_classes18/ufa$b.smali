.class public final Lufa$b;
.super Lufa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lufa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lufa;-><init>(Ltfa;)V

    .line 3
    const-string v0, "templateName"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    const-string v0, "templateSource"

    invoke-static {v0, p2}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    instance-of v0, p2, Lufa;

    if-nez v0, :cond_0

    .line 6
    iput-object p1, p0, Lufa$b;->a:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lufa$b;->b:Ljava/lang/Object;

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ltfa;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lufa$b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lufa$b;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lufa$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public e()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
