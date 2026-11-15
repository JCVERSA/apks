.class public final synthetic Ln31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lv31;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lv31;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln31;->b:Ljava/lang/String;

    iput-object p2, p0, Ln31;->c:Lv31;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ln31;->b:Ljava/lang/String;

    iget-object p0, p0, Ln31;->c:Lv31;

    invoke-static {v0, p0}, Lv31;->h(Ljava/lang/String;Lv31;)V

    return-void
.end method
