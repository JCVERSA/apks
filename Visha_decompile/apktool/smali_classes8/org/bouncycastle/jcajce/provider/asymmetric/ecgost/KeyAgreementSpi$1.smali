.class Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyAgreementSpi$1;
.super Ljava/security/InvalidKeyException;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lnf5;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lnf5;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyAgreementSpi$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/KeyAgreementSpi$1;->val$e:Ljava/lang/Exception;

    return-object p0
.end method
