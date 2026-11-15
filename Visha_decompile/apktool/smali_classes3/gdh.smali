.class public final synthetic Lgdh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj7i;


# instance fields
.field public final synthetic a:Lkdh;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Landroid/os/Bundle;

.field public final synthetic e:Z

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lkdh;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgdh;->a:Lkdh;

    iput-object p2, p0, Lgdh;->b:Ljava/lang/String;

    iput-object p3, p0, Lgdh;->c:Ljava/util/List;

    iput-object p4, p0, Lgdh;->d:Landroid/os/Bundle;

    iput-boolean p5, p0, Lgdh;->e:Z

    iput-boolean p6, p0, Lgdh;->f:Z

    return-void
.end method


# virtual methods
.method public final zza()Lim5;
    .locals 6

    iget-object v0, p0, Lgdh;->a:Lkdh;

    iget-object v1, p0, Lgdh;->b:Ljava/lang/String;

    iget-object v2, p0, Lgdh;->c:Ljava/util/List;

    iget-object v3, p0, Lgdh;->d:Landroid/os/Bundle;

    iget-boolean v4, p0, Lgdh;->e:Z

    iget-boolean v5, p0, Lgdh;->f:Z

    invoke-static/range {v0 .. v5}, Lkdh;->b(Lkdh;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)Lim5;

    move-result-object p0

    return-object p0
.end method
