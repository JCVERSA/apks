.class public final synthetic Lu31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lv31;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lv31;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu31;->b:Lv31;

    iput-object p2, p0, Lu31;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lu31;->b:Lv31;

    iget-object p0, p0, Lu31;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lv31;->a(Lv31;Ljava/lang/String;)V

    return-void
.end method
