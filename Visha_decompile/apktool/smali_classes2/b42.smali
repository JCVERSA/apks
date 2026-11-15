.class public final synthetic Lb42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Le42;

.field public final synthetic c:La9b;

.field public final synthetic d:Lm9b;

.field public final synthetic e:Lxd3;


# direct methods
.method public synthetic constructor <init>(Le42;La9b;Lm9b;Lxd3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb42;->b:Le42;

    iput-object p2, p0, Lb42;->c:La9b;

    iput-object p3, p0, Lb42;->d:Lm9b;

    iput-object p4, p0, Lb42;->e:Lxd3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lb42;->b:Le42;

    iget-object v1, p0, Lb42;->c:La9b;

    iget-object v2, p0, Lb42;->d:Lm9b;

    iget-object p0, p0, Lb42;->e:Lxd3;

    invoke-static {v0, v1, v2, p0}, Le42;->c(Le42;La9b;Lm9b;Lxd3;)V

    return-void
.end method
