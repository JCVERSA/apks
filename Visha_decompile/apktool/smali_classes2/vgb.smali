.class public final synthetic Lvgb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lww4;

.field public final synthetic d:Lrv4;

.field public final synthetic e:Z

.field public final synthetic f:Lugb;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lww4;Lrv4;ZLugb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvgb;->b:Ljava/lang/String;

    iput-object p2, p0, Lvgb;->c:Lww4;

    iput-object p3, p0, Lvgb;->d:Lrv4;

    iput-boolean p4, p0, Lvgb;->e:Z

    iput-object p5, p0, Lvgb;->f:Lugb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lvgb;->b:Ljava/lang/String;

    iget-object v1, p0, Lvgb;->c:Lww4;

    iget-object v2, p0, Lvgb;->d:Lrv4;

    iget-boolean v3, p0, Lvgb;->e:Z

    iget-object p0, p0, Lvgb;->f:Lugb;

    invoke-static {v0, v1, v2, v3, p0}, Lugb$b;->F(Ljava/lang/String;Lww4;Lrv4;ZLugb;)V

    return-void
.end method
