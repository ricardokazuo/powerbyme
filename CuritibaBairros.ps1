
function Generate-RandomNumber {
    param (
        [int]$min = 0,
        [int]$max = 100
    )

    # Generate a random number between $min and $max (inclusive)
    $randomNumber = Get-Random -Minimum $min -Maximum ($max + 1)
    return $randomNumber
}
$endpoint = ""

# Infinite loop with a 1-minute pause
while ($true) {
    # Your code or actions here
    Write-Host "Performing some task..."

	$bairrosList = @(
	"Ganchinho, Curitiba, Paraná",
	"Sitio Cercado, Curitiba, Paraná",
	"Umbará, Curitiba, Paraná",
	"Abranches, Curitiba, Paraná",
	"Atuba, Curitiba, Paraná",
	"Bacacheri, Curitiba, Paraná",
	"Bairro Alto, Curitiba, Paraná",
	"Barreirinha, Curitiba, Paraná",
	"Boa Vista, Curitiba, Paraná",
	"Cachoeira, Curitiba, Paraná",
	"Pilarzinho, Curitiba, Paraná",
	"Santa Cândida, Curitiba, Paraná",
	"São Lourenço, Curitiba, Paraná",
	"Santa Gabriela, Curitiba, Paraná",
	"Tarumã, Curitiba, Paraná",
	"Tingui, Curitiba, Paraná",
	"Alto Boqueirão, Curitiba, Paraná",
	"Boqueirão, Curitiba, Paraná",
	"Hauer, Curitiba, Paraná",
	"Xaxim, Curitiba, Paraná",
	"Cajuru, Curitiba, Paraná",
	"Capão da Imbuia, Curitiba, Paraná",
	"Guabirotuba, Curitiba, Paraná",
	"Jardim das Américas, Curitiba, Paraná",
	"Uberaba, Curitiba, Paraná",
	"Augusta, Curitiba, Paraná",
	"Cidade Industrial, Curitiba, Paraná",
	"Riviera, Curitiba, Paraná",
	"São Miguel, Curitiba, Paraná",
	"Água Verde, Curitiba, Paraná",
	"Campo Comprido, Curitiba, Paraná",
	"Fanny, Curitiba, Paraná",
	"Fazendinha, Curitiba, Paraná",
	"Guaíra, Curitiba, Paraná",
	"Lindoia, Curitiba, Paraná",
	"Novo Mundo, Curitiba, Paraná",
	"Parolin, Curitiba, Paraná",
	"Portão, Curitiba, Paraná",
	"Santa Quitéria, Curitiba, Paraná",
	"Vila Izabel, Curitiba, Paraná",
	"Ahú, Curitiba, Paraná",
	"Alto da Glória, Curitiba, Paraná",
	"Alto da XV, Curitiba, Paraná",
	"Batel, Curitiba, Paraná",
	"Bigorrilho, Curitiba, Paraná",
	"Bom Retiro, Curitiba, Paraná",
	"Cabral, Curitiba, Paraná",
	"Centro, Curitiba, Paraná",
	"Centro Cívico, Curitiba, Paraná",
	"Cristo Rei, Curitiba, Paraná",
	"Hugo Lange, Curitiba, Paraná",
	"Jardim Botânico, Curitiba, Paraná",
	"Jardim Social, Curitiba, Paraná",
	"Juvevê, Curitiba, Paraná",
	"Mercês, Curitiba, Paraná",
	"Prado Velho, Curitiba, Paraná",
	"Rebouças, Curitiba, Paraná",
	"São Francisco, Curitiba, Paraná",
	"Campo de Santana, Curitiba, Paraná",
	"Capão Raso, Curitiba, Paraná",
	"Caximba, Curitiba, Paraná",
	"Pinheirinho, Curitiba, Paraná",
	"Tatuquara, Curitiba, Paraná",
	"Butiatuvinha, Curitiba, Paraná",
	"Campina do Siqueira, Curitiba, Paraná",
	"Campo Comprido, Curitiba, Paraná",
	"Cascatinha, Curitiba, Paraná",
	"Lamenha Pequena, Curitiba, Paraná",
	"Mossunguê, Curitiba, Paraná",
	"Orleans, Curitiba, Paraná",
	"Santa Felicidade, Curitiba, Paraná",
	"Santo Inácio, Curitiba, Paraná",
	"São Braz, Curitiba, Paraná",
	"São João, Curitiba, Paraná",
	"Seminário, Curitiba, Paraná",
	"Vista Alegre, Curitiba, Paraná"
	
	)

	$Date = Get-Date
	#$Date = $Date.AddHours(9)

    
	
	foreach ($bairro in $bairrosList)
	{
		$Number = Generate-RandomNumber
		$payload = @{
		"Date" =""+$Date+""
		"Location" =""+$bairro+""
		"Value" =""+$Number+""
		"Source" ="Super Machine PowShell"
		}
	Write-Host "$bairro $Number"
	Invoke-RestMethod -Method Post -Uri "$endpoint" -Body (ConvertTo-Json @($payload))

	
	}
	
	# Pause for 1 minute (60 seconds)
	Write-Host "Waiting 60 seconds..."
	Start-Sleep -Seconds 60
}

