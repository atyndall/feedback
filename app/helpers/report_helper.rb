module ReportHelper

  def statpie
    pie_chart [
                  ['Bad', @badc],
                  ['Okay', @avgc],
                  ['Good', @godc]
              ],
              library: {
                  pieSliceText: 'none',
                  slices: [
                      {color: '#FF2B2B'},
                      {color: '#FFD454'},
                      {color: '#2BFF38'}
                  ]
              }
  end
end
