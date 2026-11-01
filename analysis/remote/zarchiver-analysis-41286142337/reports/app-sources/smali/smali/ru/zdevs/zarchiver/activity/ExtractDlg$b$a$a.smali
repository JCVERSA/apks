.class public final Lru/zdevs/zarchiver/activity/ExtractDlg$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/activity/ExtractDlg$b$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/activity/ExtractDlg$b$a;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/activity/ExtractDlg$b$a;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/activity/ExtractDlg$b$a$a;->a:Lru/zdevs/zarchiver/activity/ExtractDlg$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/activity/ExtractDlg$b$a$a;->a:Lru/zdevs/zarchiver/activity/ExtractDlg$b$a;

    iget-object v0, v0, Lru/zdevs/zarchiver/activity/ExtractDlg$b$a;->b:Lru/zdevs/zarchiver/activity/ExtractDlg$b;

    iget-object v0, v0, Lru/zdevs/zarchiver/activity/ExtractDlg$b;->a:Lru/zdevs/zarchiver/activity/ExtractDlg;

    invoke-virtual {v0}, Lru/zdevs/zarchiver/activity/ExtractDlg;->finishAndRemoveTask()V

    return-void
.end method
