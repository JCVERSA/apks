.class public Lvr3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lxr3;


# direct methods
.method public constructor <init>(Lxr3;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lvr3;->b:Lxr3;

    iput-object p2, p0, Lvr3;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3

    new-instance v0, Ljava/lang/Long;

    iget-object p0, p0, Lvr3;->a:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method
