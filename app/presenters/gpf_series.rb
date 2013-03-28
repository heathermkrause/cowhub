class GpfSeries

  def series
    Group.all.map do |group|
      {
        name: group.lgid,
        data: group.gpfs.group("date(gpfs.created_at)").average(:fat)
      }
    end
  end

  # [{
  #     name: "Group 1",
  #     #pointInterval: <%= 1.day * 1000 %>,
  #     #pointStart: <%= 4.weeks.ago.to_i * 1000 %>,
  #     data: [0, 0.1, 0.5, 0.8]

  #     #<%= (4.weeks.ago.to_date..Date.today).map { |q| Gpf.group.avel_on(q).to_f}.inspect %>
  # },
  # {
  #     name: "Group 2",
  #     #pointInterval: <%= 1.day * 1000 %>,
  #     #pointStart: <%= 4.weeks.ago.to_i * 1000 %>,
  #     data: [0, 0.1, 0.5, 0.8]


  # }
  # ]

end
