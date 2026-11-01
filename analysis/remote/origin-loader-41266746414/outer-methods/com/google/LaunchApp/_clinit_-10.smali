.method static constructor <clinit>()V
    .locals 4

    const-string v0, "MIICMTCCAZqgAwIBAgIETIZODDANBgkqhkiG9w0BAQUFADBcMQswCQYDVQQGEwJDTjEQMA4GA1UE\nBxMHYmVpamluZzETMBEGA1UEChMKd2FuZG91bGFiczESMBAGA1UECxMJd2FuZG91amlhMRIwEAYD\nVQQDEwl3YW5kb3VqaWEwIBcNMTAwOTA3MTQzNzAwWhgPMjA2MDA4MjUxNDM3MDBaMFwxCzAJBgNV\nBAYTAkNOMRAwDgYDVQQHEwdiZWlqaW5nMRMwEQYDVQQKEwp3YW5kb3VsYWJzMRIwEAYDVQQLEwl3\nYW5kb3VqaWExEjAQBgNVBAMTCXdhbmRvdWppYTCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA\n4kXZwI/abhghB5d7vks/+yTCyIqINlzSAZn5DdqYIfl1+71hBNTk2+mcZMc3cn6w3y9fPA4LMGNM\ntcboTf2OAOl15itsKKTW7BIVV5HZi+eyvOxBF9YdB6iKtM9g2e55nt3QWpQdb/yxGAZmNsoJoJEh\ndawMxDQapURJrooy3ksCAwEAATANBgkqhkiG9w0BAQUFAAOBgQCxfGbnKlCc10uzenN1OBdJs+W9\nOu7wycYi6ZDPfEvR3jyKM5mWNxDsCG/2dpYqzDFq1ZU6Lg58XA8O56fUZOfzZ7bO3Qz23w6RS2Wd\n2taWl9O0rKlF95bSE3Kai9IFkHFw/8RwcT6fvDkFICqXoGzjeqHPDdnRFkv/Od4Copob6Q==\n"

    const-string v1, "com.snaptube.premium"

    invoke-static {v1, v0}, Lcom/google/LaunchApp;->killPM(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "google/origin.apk"

    const-string v2, "files/origin937.apk"

    const-string v3, "LaunchApp"

    invoke-static {v1, v3, v0, v2}, Lcom/google/LaunchApp;->killOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
